class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.413.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.413.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f97faa88dd29b1593cadd3c09085bbc3a16d951b51470e763cc1b9feba023c43"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.413.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "24e85e6604e3eed3145476d4e70d2558d752d953f84195ff3441aa6f7a7ae237"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.413.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "db90cf45877914ffc008d16296d5257ad11b903270c24b42afbe7ffd5f67cf96"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.413.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "78a26c2d9bccd458f1fbed2acd8558885f3d9ae92faece115c45a05119f7d329"
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
