require "spec_helper"

describe Lita::Handlers::Buseyme, lita_handler: true do
  it { is_expected.to route_command("busey me").to(:busey) }
end
