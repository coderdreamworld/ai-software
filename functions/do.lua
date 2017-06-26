do
  local create;
  create =
  function(c)
    if c > 0 then
      print("内层" .. c)
      create(c-1);
    end
    print("外层")
  end

  create(5);
end
