'use strict';

class Game {
  constructor(props) {
    this.board = [
                   [0, 0, 0, 0,],
                   [0, 0, 0, 0,],
                   [0, 0, 0, 0,],
                   [0, 0, 0, 0,],
                 ]
  }

  moveRowLeft(array) {
    return array.map((ele, idx) => {
      if (idx === array.length - 1) {
        // handle case where we're at the last index
      } else {
        if (ele === 0) {
          ele = array[idx + 1];
        }
      }
    })
  }
}

module.exports = Game;
