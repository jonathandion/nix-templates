{
  description = ''
    Nix templates for creating new projects.
  '';
  outputs = { self }: {
    templates = {
      nodejs = {
        path = ./nodejs;
        description = "A simple nodejs template";
      };
    };
    defaultTemplate = self.templates.nodejs;
  };
}
