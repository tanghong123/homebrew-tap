class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.171.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.171.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "7b7baf44c32bf320d746c9364853bf6777613eb182464071a033bd665d98cbc4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.171.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d8292e411b11a8b4f9e8065c54f4e0170cbf1cbdfeb6c128576cca9e466e9c76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.171.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "26e45472ce4477f9c938dff5db7fd69b49f4743adc56f053dbecccd6cf91e1e3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.171.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "55f0cb790073fd42c952b5e4f24faa2ddc32502b2697123116d6e881293b28c5"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
    bin.install_symlink bin/"agent-monitor-fleet" => "claude-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
