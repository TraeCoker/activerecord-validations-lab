class TitleValidator < ActiveModel::Validator 
    def validate(record)
        if record.title.present?
        unless record.title.match?(/Won't Believe/) || record.title.match?(/Secret/) || record.title.match?(/Top [number]/) || record.title.match?(/Guess/)
            record.errors[:title] << "Title must be clickbait"
        end
    end
    end 
end 