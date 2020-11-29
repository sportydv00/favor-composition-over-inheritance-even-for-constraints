// Copyright 2018 Tudor Timisescu (verificationgentleman.com)
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


class test_all_random extends abstract_test;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction


  protected virtual function void set_default_sequences();
    uvm_config_db #(uvm_object_wrapper)::set(
        seqr,
        "run_phase",
        "default_sequence",
        sequence_item_stream::get_type());
  endfunction


  `uvm_component_utils(test_all_random)

endclass
