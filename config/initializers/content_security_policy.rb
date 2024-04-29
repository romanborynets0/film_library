# Be sure to restart your server when you modify this file.

# Define an application-wide content security policies.
# See the Securing Rails Applications Guide for more information:
# https://guides.rubyonrails.org/security.html#content-security-policy-header

# Rails.application.configure do
#   config.content_security_policy do |policies|
#     policies.default_src :self, :https
#     policies.font_src    :self, :https, :data
#     policies.img_src     :self, :https, :data
#     policies.object_src  :none
#     policies.script_src  :self, :https
#     policies.style_src   :self, :https
#     # Specify URI for violation reports
#     # policies.report_uri "/csp-violation-report-endpoint"
#   end
#
#   # Generate session nonces for permitted importmap, inline scripts, and inline styles.
#   config.content_security_policy_nonce_generator = ->(request) { request.session.id.to_s }
#   config.content_security_policy_nonce_directives = %w(script-src style-src)
#
#   # Report violations without enforcing the policies.
#   # config.content_security_policy_report_only = true
# end
