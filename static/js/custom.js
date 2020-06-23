// From https://inclusive-components.design/collapsible-sections/
// by Heydon Pickering, used to create collapsing sections in the side nav

(function() {
  // Get all the <h2> headings
  const navSections = document.querySelectorAll('.quire-menu .list-header')
  
  Array.prototype.forEach.call(navSections, navSection => {
    // Give each <h2> a toggle button child
    // with the SVG plus/minus icon
    navSection.innerHTML = `
      <button aria-expanded="false">
        ${navSection.textContent}
        <!-- <svg aria-hidden="true" focusable="false" viewBox="0 0 10 10">
          <rect class="vert" height="8" width="2" y="1" x="4"/>
          <rect height="2" width="8" y="4" x="1"/>
        </svg> -->
      </button>
    `
    
    // Function to create a node list 
    // of the content between this <h2> and the next
    const getContent = (elem) => {
      let elems = []
      while (elem.nextElementSibling) {
        elems.push(elem.nextElementSibling)
        elem = elem.nextElementSibling
      }
      
      // Delete the old versions of the content nodes
      elems.forEach((node) => {
        node.parentNode.removeChild(node)
      })

      return elems
    }
    
    // Assign the contents to be expanded/collapsed (array)
    let contents = getContent(navSection)
    
    // Create a wrapper element for `contents` and hide it
    let wrapper = document.createElement('div')
    wrapper.hidden = true
    
    // Add each element of `contents` to `wrapper`
    contents.forEach(node => {
      wrapper.appendChild(node)
    })
    
    // Add the wrapped content back into the DOM 
    // after the heading
    navSection.parentNode.insertBefore(wrapper, navSection.nextElementSibling)
    
    // Assign the button
    let btn = navSection.querySelector('button')
    
    btn.onclick = () => {
      // Cast the state as a boolean
      let expanded = btn.getAttribute('aria-expanded') === 'true' || false
      
      // Switch the state
      btn.setAttribute('aria-expanded', !expanded)
      // Switch the content's visibility
      wrapper.hidden = expanded    
    }
    
  })
})();

// After setting up buttons with hidden elements in the above, find the button 
// to the current active section, and open it
(function() {
  
  let currentBtn = document.querySelector('.section-item.active-section button') 
  let wrapper = document.querySelector('.section-item.active-section div[hidden]') 
  let expanded = currentBtn.getAttribute('aria-expanded') === 'true' || false

  // Switch the state
  currentBtn.setAttribute('aria-expanded', !expanded)
  // Switch the content's visibility
  wrapper.hidden = expanded 
})();

// A small script to center the images inside the custom slider figure group
// So if there are five images in the slider, the third one will be centered
// in the scroll area. (So, odd numbers of images work best)
(function() {
  
  let sliders = document.querySelectorAll('.slider')
  
  Array.prototype.forEach.call(sliders, slider => {
    let scrollContainer = slider.querySelector('.quire-figure--group__row')
    let containerWidth = scrollContainer.offsetWidth
    let windowWidth = window.innerWidth
    
    slider.scrollLeft = ((containerWidth * .5) - (windowWidth * .5));
  })
})();
