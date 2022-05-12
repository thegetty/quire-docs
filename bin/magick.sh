#!/bin/bash

# Convert images to JPGs at 80% quality and a maximum pixel dimension of 1800px (web and print ready) and apply a consisent color profile to them.
# Create JPGs of those same images at 100% quality and sized to optimize IIIF processing where applicable
# Create a CSV with basic image info that can be converted for use in figures.yml

defaultSize=1800
defaultQuality=80

prepIIIF=false # resize images to later process with `quire process --iiif`
outputCSV=false # output a CSV file that can be used as a basis for figures.yml
quietMode=false # supress ImageMagick warnings about image files

baseDir=static/img
inputDir=magick
iiifOutputDir=iiif
figureOutputDir=magick-output

# color profiles to use
colorProfile=bin/magick/adobe-rgb-1998.icm
bwProfile=bin/magick/gray-gamma-2-2.icm

# crop sizes for IIIF tiling
# currently only 6 layers are supported in Quire
iiif4Layers=2304
iiif5Layers=4352
iiif6Layers=8448
# iiif7Layers=16640
# iiif8Layers=33024

create_directory()
{
  dir=$1

  if [ -d "$baseDir/$dir" ]
  then
      :
  else
      mkdir "$baseDir/$dir"
  fi
}

add_to_csv()
{
file=$1
type=$2

if [ $outputCSV == true ]
then
  if [ "$type" == "iiif" ]
  then
    printf '\n\"'$1'\", \"'$figureOutputDir'/'$1'.jpg\", iiif, \"/img/'$iiifOutputDir'/processed/'$1'/info.json\"' >> bin/magick/_figures.csv
  else
    printf '\n\"'$1'\", \"'$figureOutputDir'/'$1'.jpg\", ,' >> bin/magick/_figures.csv
  fi
fi
}

if ! command -v magick &> /dev/null
then
  printf 'This script requires ImageMagick, please download and install it from https://imagemagick.org/script/download.php before proceeding\n'
  exit
fi

if [ $outputCSV == true ]
then
  if [ $prepIIIF == true ]
  then
    printf 'id, src, media_type, iiif' > bin/magick/_figures.csv
  else
    printf 'id, src' > bin/magick/_figures.csv
  fi
fi

if [ $prepIIIF == true ]
then
create_directory $iiifOutputDir
fi

create_directory $figureOutputDir

for img in $baseDir/$inputDir/*
do

  colorSpace=`magick identify -quiet -format "%[colorspace]" $img`
  maxDim=`magick identify -quiet -format "%[fx:max(w,h)]" $img`
  fileName=`magick identify -quiet -format "%t" $img`

  if [ $colorSpace == "Gray" ]
  then
    profile=$bwProfile
  else
    profile=$colorProfile
  fi

  if [ $quietMode == true ]
  then
    mode='-quiet'
  else
    mode=''
    printf '\n'$fileName'\n'
  fi

  magick $mode $img -resize $defaultSize'x'$defaultSize'>' -quality $defaultQuality -layers flatten -profile $profile -set filename:name '%t' $baseDir/$figureOutputDir/'%[filename:name].jpg'

  if [ $prepIIIF == true ]
  then

    if [ $maxDim -lt $iiif4Layers ]
    then
      add_to_csv $fileName
    elif [ $maxDim -lt $iiif5Layers ]
    then
      magick -quiet $img -resize $iiif4Layers'x'$iiif4Layers -layers flatten -profile $profile -set filename:name '%t' $baseDir/$iiifOutputDir/'%[filename:name].jpg'
      add_to_csv $fileName iiif
    elif [ $maxDim -lt $iiif6Layers ]
    then
      magick -quiet $img -resize $iiif5Layers'x'$iiif5Layers -layers flatten -profile $profile -set filename:name '%t' $baseDir/$iiifOutputDir/'%[filename:name].jpg'
      add_to_csv $fileName iiif
    else
      magick -quiet $img -resize $iiif6Layers'x'$iiif6Layers -layers flatten -profile $profile -set filename:name '%t' $baseDir/$iiifOutputDir/'%[filename:name].jpg'
      add_to_csv $fileName iiif
    fi

  else
    add_to_csv $fileName
  fi

done