export const value = (colorInputs) => {

  const totalString = colorInputs.map(i => `${COLORS.indexOf(i)}`).join("")

  return Number(totalString)
};

const COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"];



