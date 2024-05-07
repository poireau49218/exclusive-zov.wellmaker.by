const swiper_main = new Swiper('.swiper-main', {
  direction: 'horizontal',
  /*loop: true,*/
  rewind: true,
  autoplay: {
    delay: 5000,
    disableOnInteraction: false,
  },
  scrollbar: {
    el: '.swiper-scrollbar',
    draggable: true,
  },
});

const swiper_latest = new Swiper('.swiper-latest', {
  direction: 'horizontal',
  slidesPerView: "auto",
  spaceBetween: 50,

  /*centeredSlides: true,*/
  /*freeMode: true,*/
  grabCursor: true,
  
  /*loop: true,*/
  rewind: true,
  autoplay: {
    delay: 5000,
    disableOnInteraction: false,
  },
  scrollbar: {
    el: '.swiper-scrollbar',
    draggable: true,
  },
});