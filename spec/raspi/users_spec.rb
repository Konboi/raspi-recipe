require 'spec_helper'

describe user('yabuki-ryosuke') do
  it { should exist }
  it { should belong_to_group 'wheel' }
  it { should have_home_directory '/home/yabuki-ryosuke' }
end
