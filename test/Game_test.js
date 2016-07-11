'use strict';

const Game = require('../Game');
const expect = require('chai').expect;

describe('Game', () => {

  var game = new Game;

  describe('the new game object', () => {
    it('the board is a two-dimensional array of zeroes', () => {
      expect(game.board).to.be.an('array');
      expect(game.board[0]).to.be.an('array');
      expect(game.board[0][0]).to.be.a('number');
      expect(game.board[0][0]).equal(0);
    });
  });

  // describe('#moveRowLeft', () => {
  //   expect(game.moveRowLeft([0,2,0,4])).to.equal([2,4,0,0])
  // })
});
