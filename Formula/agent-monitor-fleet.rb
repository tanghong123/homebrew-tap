class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.184.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.184.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "7a02c70afddcdf2333a52776a06f0de28e7417eed572ad3098f7b7d2320f5a61"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.184.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "ef26ddddd52321a293f30af3f17cc14fbdf39a4c0addbc5cafe87fe2c5d5b388"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.184.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "46ec45e65a43ade0b2f255e22ef6881299761ffeed483fd8f245c65ab2ac7280"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.184.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "830b4fda15403d28a877df88355df80c9d51ae32f055f548e8849bf0f7c73a02"
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
