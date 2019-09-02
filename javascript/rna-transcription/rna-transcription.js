export const toRna = (dna) => {
  return dna.split('').map((letter) => dnaRnaMap[letter]).join('');
};

const dnaRnaMap = {
  'G': 'C',
  'C': 'G',
  'T': 'A',
  'A': 'U'
};
