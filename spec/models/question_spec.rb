require 'rails_helper'

describe Question do
  it { should belong_to(:ask) }
  it { should have_many(:responses) }
end
