module.exports = {
  email: 'barrysaliou18@gmail.com'
  socialMedia: [
    {
      name: 'Linkedin',
      url: 'https://www.linkedin.com/in/mamadou-barry-59a5b111a/',
    },
    {
      name: 'GitHub',
      url: 'https://github.com/barrysaliou18',
    },
    {
      name: 'Codepen',
      url: 'https://codepen.io/barrysaliou18',
    },
    {
      name: 'Twitter',
      url: 'https://twitter.com/bchiang7',
    },
    {
      name: 'Instagram',
      url: 'https://www.instagram.com/barrysaliou18',
    },
  ],

  navLinks: [
    {
      name: 'About',
      url: '/#about',
    },
    {
      name: 'Experience',
      url: '/#jobs',
    },
    {
      name: 'Work',
      url: '/#projects',
    },
    {
      name: 'Contact',
      url: '/#contact',
    },
  ],

  navHeight: 100,

  colors: {
    green: '#64ffda',
    navy: '#0a192f',
    darkNavy: '#020c1b',
  },

  srConfig: (delay = 200) => ({
    origin: 'bottom',
    distance: '20px',
    duration: 500,
    delay,
    rotate: { x: 0, y: 0, z: 0 },
    opacity: 0,
    scale: 1,
    easing: 'cubic-bezier(0.645, 0.045, 0.355, 1)',
    mobile: true,
    reset: false,
    useDelay: 'always',
    viewFactor: 0.25,
    viewOffset: { top: 0, right: 0, bottom: 0, left: 0 },
  }),
};
