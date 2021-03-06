require File.expand_path('../../../spec_helper', __FILE__)
require File.expand_path('../fixtures/classes', __FILE__)
require File.expand_path('../shared/eql', __FILE__)

describe "Hash#==", ->
  it_behaves_like :hash_eql, :==
  it_behaves_like :hash_eql_additional, :==
  it_behaves_like :hash_eql_additional_more, :==

  it "compares values with == semantics", ->
    l_val = mock("left")
    r_val = mock("right")

    l_val.should_receive(:==).with(r_val).and_return(true)

    (new_hash(1 => l_val) == new_hash(1 => r_val)).should be_true
end
