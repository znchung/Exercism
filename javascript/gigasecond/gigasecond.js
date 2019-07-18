export const gigasecond = (date) => {
  let seconds = date.getTime()/1000 + Math.pow(10, 9)
  return new Date(seconds * 1000)
};
