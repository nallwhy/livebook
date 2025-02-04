defmodule AppBuilder do
  defdelegate build_mac_app(release, options), to: AppBuilder.MacOS

  defdelegate build_mac_app_dmg(release, options), to: AppBuilder.MacOS

  defdelegate build_windows_installer(release, options), to: AppBuilder.Windows

  def os do
    case :os.type() do
      {:unix, :darwin} -> :macos
      {:win32, _} -> :windows
    end
  end
end
