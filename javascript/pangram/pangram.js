
const alphabet = 'abcdefghijklmnopqrstuwxyz'

export const isPangram = (input) => {
  var replaced = input.toLowerCase().replace('/[^a-z]/', '');

  return Array.from(alphabet).every(e => replaced.includes(e))
};
