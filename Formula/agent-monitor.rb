class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.557.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.557.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a32751c7646fdbf91e66ab7d4031e7d9fae20edf843a1a71edfbb404de236d3a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.557.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "66e30ccd9130d76a300dac5fc82ca65cf8c475a2eb94a1789f4acf47ea9396eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.557.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e20a03db8bd40cadcdb64ef92eeebdad1e253b9e6ef3cc408eca6e5c1ea1ffef"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.557.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0927898a5521baf7b5fbc1c7b95912ebddd64bb9f4afcfb85707d8118352558b"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
