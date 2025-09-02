document.addEventListener('DOMContentLoaded', function() {
  // Initialize GSAP animations
  gsap.registerPlugin(ScrollTrigger);
  
  // Header animation
  gsap.from(".dashboard-header", {
    duration: 1,
    y: -50,
    opacity: 0,
    ease: "power3.out"
  });
  
  // Card animations
  gsap.from(".card", {
    duration: 1,
    y: 50,
    opacity: 0,
    stagger: 0.2,
    ease: "power3.out",
    scrollTrigger: {
      trigger: ".summary-cards",
      start: "top 80%"
    }
  });
  
  // Table animations
  gsap.from(".glass-panel", {
    duration: 1,
    y: 50,
    opacity: 0,
    stagger: 0.1,
    ease: "power3.out",
    scrollTrigger: {
      trigger: ".tables-container",
      start: "top 80%"
    }
  });
  
  // Nav button animations
  gsap.from(".nav-btn", {
    duration: 0.8,
    x: -20,
    opacity: 0,
    stagger: 0.1,
    ease: "back.out"
  });
  
  // Search and period select animation
  gsap.from(".search-period > *", {
    duration: 0.8,
    y: 20,
    opacity: 0,
    stagger: 0.1,
    ease: "power2.out"
  });
  
  // Initialize Chart.js
  const ctx = document.getElementById('revenueChart').getContext('2d');
  const revenueChart = new Chart(ctx, {
    type: 'line',
    data: {
      labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul'],
      datasets: [{
        label: 'Monthly Revenue',
        data: [6500, 5900, 8000, 8100, 8600, 9250, 10599],
        borderColor: '#7a5cff',
        backgroundColor: 'rgba(122, 92, 255, 0.1)',
        borderWidth: 2,
        tension: 0.4,
        fill: true,
        pointBackgroundColor: '#fff',
        pointBorderColor: '#7a5cff',
        pointRadius: 4,
        pointHoverRadius: 6
      }]
    },
    options: {
      responsive: true,
      plugins: {
        legend: {
          display: false
        },
        tooltip: {
          backgroundColor: 'rgba(12,15,35,0.9)',
          titleColor: '#fff',
          bodyColor: '#cbd5ff',
          borderColor: 'rgba(255,255,255,0.1)',
          borderWidth: 1,
          displayColors: false
        }
      },
      scales: {
        y: {
          grid: {
            color: 'rgba(255,255,255,0.05)'
          },
          ticks: {
            color: 'rgba(255,255,255,0.6)'
          }
        },
        x: {
          grid: {
            color: 'rgba(255,255,255,0.05)'
          },
          ticks: {
            color: 'rgba(255,255,255,0.6)'
          }
        }
      }
    }
  });
  
  // Add 3D effect to cards on hover
  const cards = document.querySelectorAll('.card');
  cards.forEach(card => {
    card.addEventListener('mousemove', (e) => {
      const x = e.clientX - card.getBoundingClientRect().left;
      const y = e.clientY - card.getBoundingClientRect().top;
      
      const centerX = card.offsetWidth / 2;
      const centerY = card.offsetHeight / 2;
      
      const angleX = (y - centerY) / 20;
      const angleY = (centerX - x) / 20;
      
      gsap.to(card, {
        rotateX: angleX,
        rotateY: angleY,
        transformPerspective: 1000,
        transformOrigin: "center center",
        ease: "power1.out",
        duration: 0.5
      });
    });
    
    card.addEventListener('mouseleave', () => {
      gsap.to(card, {
        rotateX: 0,
        rotateY: 0,
        ease: "power1.out",
        duration: 0.5
      });
    });
  });
  
  // Smooth scroll for the page
  document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
      e.preventDefault();
      document.querySelector(this.getAttribute('href')).scrollIntoView({
        behavior: 'smooth'
      });
    });
  });
  
  // Add floating effect to cards
  gsap.to(".card", {
    y: -10,
    duration: 2,
    repeat: -1,
    yoyo: true,
    ease: "sine.inOut"
  });
});

// Mobile menu toggle
function toggleMobileMenu() {
  const navMenu = document.querySelector('.nav-menu');
  const hamburger = document.querySelector('.hamburger');
  
  navMenu.classList.toggle('active');
  hamburger.classList.toggle('active');
  
  // Animate hamburger to X
  if (navMenu.classList.contains('active')) {
    gsap.to(hamburger.querySelectorAll('span'), {
      duration: 0.3,
      backgroundColor: '#7a5cff'
    });
    gsap.to(hamburger.querySelector('span:nth-child(1)'), {
      y: 7,
      rotate: 45,
      duration: 0.3
    });
    gsap.to(hamburger.querySelector('span:nth-child(2)'), {
      opacity: 0,
      duration: 0.2
    });
    gsap.to(hamburger.querySelector('span:nth-child(3)'), {
      y: -7,
      rotate: -45,
      duration: 0.3
    });
  } else {
    gsap.to(hamburger.querySelectorAll('span'), {
      duration: 0.3,
      backgroundColor: '#fff'
    });
    gsap.to(hamburger.querySelector('span:nth-child(1)'), {
      y: 0,
      rotate: 0,
      duration: 0.3
    });
    gsap.to(hamburger.querySelector('span:nth-child(2)'), {
      opacity: 1,
      duration: 0.3,
      delay: 0.1
    });
    gsap.to(hamburger.querySelector('span:nth-child(3)'), {
      y: 0,
      rotate: 0,
      duration: 0.3
    });
  }
  
  // Optional: animate buttons on open
  if(navMenu.classList.contains('active')) {
    gsap.from(".nav-menu button", {
      duration: 0.5,
      x: -20,
      opacity: 0,
      stagger: 0.1,
      ease: "power2.out"
    });
  }
}

// Initialize 3D background elements
function init3DBackground() {
  // This would be more complex in a real implementation
  // Here we just add some floating elements
  const floatingElements = document.createElement('div');
  floatingElements.className = 'floating-elements';
  document.body.appendChild(floatingElements);
  
  for (let i = 0; i < 10; i++) {
    const element = document.createElement('div');
    element.className = `floating-element delay-${i % 3}`;
    element.style.left = `${Math.random() * 100}%`;
    element.style.top = `${Math.random() * 100}%`;
    element.style.width = `${Math.random() * 50 + 20}px`;
    element.style.height = `${Math.random() * 50 + 20}px`;
    element.style.background = `radial-gradient(circle, rgba(${Math.floor(Math.random() * 100 + 155)},${Math.floor(Math.random() * 100 + 155)},${Math.floor(Math.random() * 100 + 155)},0.1), transparent)`;
    element.style.borderRadius = '50%';
    element.style.position = 'fixed';
    element.style.zIndex = '-2';
    element.style.opacity = '0.3';
    floatingElements.appendChild(element);
    
    // Animate floating
    gsap.to(element, {
      y: (Math.random() - 0.5) * 100,
      x: (Math.random() - 0.5) * 50,
      duration: Math.random() * 10 + 10,
      repeat: -1,
      yoyo: true,
      ease: "sine.inOut"
    });
  }
}

// Initialize everything when DOM is loaded
window.addEventListener('load', function() {
  init3DBackground();
});