module.exports = {
  siteTitle: 'Mamadou Barry | Software Engineer',
  siteDescription:
    'Mamadou Barry is a software engineer based in Seattle, WA who specializes in building (and occasionally designing) exceptional websites, applications, and everything in between.',
  siteKeywords:
    'Mamadou Barry, Mamadou, Barry, barrysaliou18, software engineer, front-end engineer, web developer, javascript, Python',
  siteUrl: 'https://mamadoubarry.com',
  siteLanguage: 'en_US',
  googleAnalyticsID: 'UA-45666519-2',
  googleVerification: 'DCl7VAf9tcz6eD9gb67NfkNnJ1PKRNcg8qQiwpbx9Lk',
  name: 'Mamadou Barry',
  location: 'Kent, WA',
  email: 'barrysaliou18@gmail.com',
  github: 'https://github.com/barrysaliou18',
  socialMedia: [
    {
      name: 'GitHub',
      url: 'https://github.com/barrysaliou18',
    },
    {
      name: 'Linkedin',
      url: 'https://www.linkedin.com/in/mamadou-barry-59a5b111a/',
    },
    {
      name: 'Codepen',
      url: 'https://codepen.io/barrysaliou18',
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
