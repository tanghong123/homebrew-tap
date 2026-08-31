class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.123.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.123.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "886dcb4639e054d48f6640bc0898329e80dc9ffa4bf3beeccba5660c20c6779a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.123.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "86ba7ebe4a65454ad53a5399f43ea804d1553d54f4c4ae255761f6780f9c0954"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.123.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "df2e7aa6ce0fb369446f725e278d0a40dbf37bbdf8aaca0206de1a5b7cf66a52"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.123.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0ac46cb5dd732488eda1d76f73511753b2458cfd6f9da3537a83929f4cfe2422"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
