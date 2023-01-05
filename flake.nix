{
  description = ''
    Nix templates for creating new projects.
  '';
  outputs = { self }: {
    templates = {
      webdev = {
        path = ./web-dev/.;
        description = "A simple web-dev template";
      };
    };
    defaultTemplate = self.templates.webdev;
  };
}
