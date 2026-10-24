class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.417.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.417.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "56c18017bc797a091ca19ecc586aab19606a1949a5b2187049cde3581f982728"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.417.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "b60a88e21fdc720f229e8f924366b26a0be2603ef324b73ff07dc9635ef995b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.417.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "249950c3183e33147875fe410324462b9158529f0ace13108f5be3142358395c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.417.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a25f23afce4f7df8e727b296c4b40e3aea411e8eaf421e7a7f159998abb12b8e"
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
