class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.334.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.334.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "7627fd6801499eee5c6ec996d05fe5d7cc02fd1b749cf94f29170225333d694f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.334.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "748d0e2e13aa785a03d21bf9ed609dccb5653970f693c1d8b1ead6c468ca29f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.334.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e0480ed3010dd09c7b2fe81bde409476c155e27fe64cd980bc1d3163a4e622c5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.334.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0301c7acea5a55041e1170d143498fa68bf1187c0f64ee468f9bf253bfd02ca8"
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
