module AdventOfCode
  module Day21
    # Solution to the exercise from Day 21 (http://adventofcode.com/day/21).
    # This is part 1.
    class Part1
      WEAPONS = {
        dagger: [8, 4, 0],
        shortsword: [10, 5, 0],
        warhammer: [25, 6, 0],
        longsword: [40, 7, 0],
        greataxe: [74, 8, 0]
      }

      ARMOR = {
        leather: [13, 0, 1],
        chainmail: [31, 0, 2],
        splintmail: [53, 0, 3],
        bandedmail: [75, 0, 4],
        platemail: [102, 0, 5]
      }

      RINGS = {
        damage_plus_1: [25, 1, 0],
        damage_plus_2: [50, 2, 0],
        damage_plus_3: [100, 3, 0],
        defence_plus_1: [20, 0, 1],
        defence_plus_2: [40, 0, 2],
        defence_plus_3: [80, 0, 3]
      }

      PLAYER_HIT_POINTS = 100
      WEAPON_COMBOS = WEAPONS.values.combination(1).to_a
      ARMOR_COMBOS = [[]] + ARMOR.values.combination(1).to_a
      RING_COMBOS = [[]] + RINGS.values.combination(1).to_a + RINGS.values.combination(2).to_a
      STAT_COMBOS = WEAPON_COMBOS.product(ARMOR_COMBOS, RING_COMBOS)
                    .map { |equipment| equipment.flatten(1).transpose.map { |a| a.inject(0, :+) } }
                    .sort_by(&:first)

      def run(input)
        boss_stats = parse_lines(input)
        STAT_COMBOS.find do |stats|
          player_would_win?(boss_stats, [PLAYER_HIT_POINTS, stats[1], stats[2]])
        end.first
      end

      private

      def parse_lines(input)
        input.scan(/[0-9]+/).map(&:to_i)
      end

      def player_would_win?((boss_hp, boss_damage, boss_armor), (player_hp, player_damage, player_armor))
        loop do
          boss_hp -= [1, player_damage - boss_armor].max
          return true if boss_hp <= 0

          player_hp -= [1, boss_damage - player_armor].max
          return false if player_hp <= 0
        end
      end
    end
  end
end
