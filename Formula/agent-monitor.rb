class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.360.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.360.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "854ae8b94e533f569cad75e17282d5ab7adf888b7304c11eb92309db47c38106"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.360.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f1fa865b139818d85bbf7456f87977d2569459ef0fb6d07c593f177278209728"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.360.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3712b2795cd9a86d87069d662a013d36ccaa903e9f5f9089200195e9e12937e2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.360.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d5f848402782a53bb8f2408481cc0459795aa3f98a55c32e5e97ee7cbda7df01"
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
