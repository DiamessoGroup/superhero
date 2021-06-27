module HomeHelper
  def hero_content
    @hero_name = Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @corp_title = Faker::Company.profession.capitalize
    @corp_power = Faker::Company.bs.capitalize

    @rand_num = rand(1..1000)
    @set_number = rand(1..2)
    @bg = rand(1..2)

    # Randomly pick our background
    @background = if @bg == 1
                    'bg1'
                  else
                    'bg2'
                  end

    # Randomly Pick our avatar set
    @set = case @set_number
           when 1
             'set1'
           else
             'set2'
           end

    @avatar = Faker::Avatar.image(slug: @rand_num, size: '300x300', format: 'png', set: @set, bgset: @background)
  end
end
