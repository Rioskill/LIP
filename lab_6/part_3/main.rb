# frozen_string_literal: true

def minmax(start, finish, &func)
  (start..finish).step(1e-2).map(&func).minmax
end
