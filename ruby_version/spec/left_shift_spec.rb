require_relative '../game'

describe 'LeftShift' do

  let(:game) { Game.new }

  describe '#shift_element_left' do

    context 'when the element can move and is not a 0' do
      context 'when it is at a middle index' do
        it 'shifts an element left' do
          expect(game.shift_element_left([0,2,0,4], 1)).to eq([2,0,0,4])
        end
      end

      context 'when it is at the 0 index' do
        it 'does nothing' do
          expect(game.shift_element_left([0,2,0,4], 0)).to eq([0,2,0,4])
        end
      end

      context 'when it is at the last index' do
        it 'shifts an element left' do
          expect(game.shift_element_left([0,2,0,4], 3)).to eq([0,2,4,0])
        end
      end
    end

    context 'when the element cannot move or is a 0' do
      context 'when the element cannot move' do
        it 'does nothing' do
          expect(game.shift_element_left([0,2,4,0], 2)).to eq([0,2,4,0])
        end
      end
      context 'when the element is a 0' do
        it 'does nothing' do
          expect(game.shift_element_left([0,2,4,0], 3)).to eq([0,2,4,0])
        end
      end
    end
  end

  describe '#combine_elements_left' do
    it 'combines adjacent, same-valued elements on the left' do
      expect(game.combine_elements_left([2,2,0,0])).to eq([4,0,0,0])
      expect(game.combine_elements_left([8,4,4,0])).to eq([8,8,0,0])
      expect(game.combine_elements_left([8,0,4,4])).to eq([8,0,8,0])
    end
  end

  describe '#shift_row_left_once' do
    it 'shifts a row left once' do
      expect(game.shift_row_left_once([0,2,0,4])).to eq([2,0,4,0])
    end
  end

  describe '#shift_row_left' do
    it 'shifts a row left' do
      expect(game.shift_row_left([0,2,0,4])).to eq([2,4,0,0])
    end

    context 'when elements can be combined on the left' do
      it 'combines exactly once and finishes leftward movement' do
        expect(game.shift_row_left([4,4,8,0])).to eq([8,8,0,0])
        expect(game.shift_row_left([2,2,4,4])).to eq([4,8,0,0])
        expect(game.shift_row_left([2,2,2,2])).to eq([4,4,0,0])
        expect(game.shift_row_left([4,4,2,2])).to eq([8,4,0,0])
        expect(game.shift_row_left([8,0,4,4])).to eq([8,8,0,0])
      end
    end
  end
end
