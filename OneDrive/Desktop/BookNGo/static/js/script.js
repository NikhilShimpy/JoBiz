// ===============================
// RentSphere - Interactions & Animations
// ===============================

// Init AOS
AOS.init({ duration: 700, once: true });

// Year in footer
document.getElementById('year').textContent = new Date().getFullYear();

// Smooth anchor scroll (Bootstrap prevents default collapse already)
document.querySelectorAll('a[href^="#"]').forEach(a=>{
  a.addEventListener('click', e=>{
    const id = a.getAttribute('href');
    if(id.length > 1){
      const el = document.querySelector(id);
      if(el){
        e.preventDefault();
        window.scrollTo({ top: el.offsetTop - 70, behavior: 'smooth' });
      }
    }
  });
});

// Hover Tilt for "How it Works" (JS-driven for richer 3D)
const tiltCards = document.querySelectorAll('.tilt-on-hover');
tiltCards.forEach(card=>{
  const inner = card.querySelector('.how-card-inner');
  let rect;
  const maxTilt = 10;

  function handleMove(e){
    const x = (e.clientX || (e.touches && e.touches[0].clientX)) - rect.left;
    const y = (e.clientY || (e.touches && e.touches[0].clientY)) - rect.top;
    const px = (x / rect.width) - 0.5;
    const py = (y / rect.height) - 0.5;
    const rx = (+py * maxTilt);
    const ry = (-px * maxTilt);
    inner.style.transform = `rotateX(${rx}deg) rotateY(${ry}deg) translateY(-4px)`;
  }
  function reset(){ inner.style.transform = 'rotateX(0deg) rotateY(0deg)'; }

  card.addEventListener('mouseenter', ()=>{ rect = card.getBoundingClientRect(); });
  card.addEventListener('mousemove', handleMove);
  card.addEventListener('mouseleave', reset);
  card.addEventListener('touchstart', e=>{ rect = card.getBoundingClientRect(); handleMove(e); }, {passive:true});
  card.addEventListener('touchmove', handleMove, {passive:true});
  card.addEventListener('touchend', reset);
});

// GSAP Parallax Backgrounds
gsap.registerPlugin(ScrollTrigger);
['.bg-layer-1','.bg-layer-2','.bg-layer-3'].forEach((sel, i)=>{
  gsap.to(sel,{
    y: (i+1)*120,
    ease: 'none',
    scrollTrigger:{
      trigger: document.body,
      start: 'top top',
      end: 'bottom bottom',
      scrub: true
    }
  });
});

// GSAP Hero text entrance
gsap.from('.hero-title', {y: 40, opacity: 0, duration: 1});
gsap.from('.hero-subtext', {y: 20, opacity: 0, duration: 1, delay: 0.1});
gsap.from('.btn-glow', {scale: 0.9, opacity: 0, duration: 0.6, delay: 0.2});

// ScrollTrigger reveal for sections
document.querySelectorAll('.section-title').forEach((t,i)=>{
  gsap.from(t, {
    y: 30, opacity: 0, duration: .7,
    scrollTrigger:{ trigger: t, start: 'top 80%' }
  });
});

// Features horizontal scroller controls
const track = document.getElementById('featuresTrack');
document.getElementById('featPrev').addEventListener('click', ()=> track.scrollBy({left: -300, behavior: 'smooth'}));
document.getElementById('featNext').addEventListener('click', ()=> track.scrollBy({left: 300, behavior: 'smooth'}));

// Pin the features area subtly and add horizontal drift with GSAP
gsap.to('#featuresTrack', {
  x: -80,
  ease: 'none',
  scrollTrigger: {
    trigger: '.features-track-wrapper',
    start: 'top 80%',
    end: 'bottom 20%',
    scrub: true
  }
});

// Popular cards hover rotation already via CSS; add ScrollTrigger lift on enter
document.querySelectorAll('.rental-card').forEach((card)=>{
  gsap.from(card, {
    y: 30, opacity: 0, duration: .6,
    scrollTrigger: { trigger: card, start: 'top 85%' }
  });
});

// Testimonials auto-advance with fade
const slides = Array.from(document.querySelectorAll('.testi-slide'));
let idx = 0;
function showSlide(i){
  slides.forEach((s, n)=> s.classList.toggle('active', n === i));
}
setInterval(()=>{
  idx = (idx + 1) % slides.length;
  showSlide(idx);
}, 4000);

// Subtle tilt on hero floating icons with pointer
const tilts = document.querySelectorAll('.tilt');
document.addEventListener('mousemove', (e)=>{
  const cx = window.innerWidth / 2, cy = window.innerHeight / 2;
  const dx = (e.clientX - cx) / cx;
  const dy = (e.clientY - cy) / cy;
  tilts.forEach((el, i)=>{
    const strength = (i+1) * 4;
    el.style.transform = `translateY(${Math.sin((performance.now()/1000)+i)*4}px) rotateX(${dy*strength}deg) rotateY(${dx*strength}deg)`;
  });
});

// Accessibility: pause testimonial rotation on focus/hover
const slider = document.querySelector('.testi-slider');
let paused = false;
slider.addEventListener('mouseenter', ()=> paused = true);
slider.addEventListener('mouseleave', ()=> paused = false);
const rotator = setInterval(()=>{
  if(!paused){
    idx = (idx + 1) % slides.length;
    showSlide(idx);
  }
}, 4500);

// Ensure buttons keep glow on key focus
document.querySelectorAll('.btn, .social, .feature-pill, .how-card').forEach(el=>{
  el.addEventListener('keyup', (e)=>{ if(e.key === 'Enter') el.click?.(); });
});
