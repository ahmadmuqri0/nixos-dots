{ ... }: {
  programs.git = {
    enable = true;
    settings = {
      init.defaultBranch = "main";
      user.name = "ahmadmuqri0";
      user.email = "muqrisuhaimi25@gmail.com";
    };
  };
}
