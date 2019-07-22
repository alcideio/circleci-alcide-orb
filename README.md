# Alcide Kubernetes Advisor

Alcide Advisor is an agentless service for Kubernetes audit and compliance that’s built to ensure a frictionless and secured DevSecOps workflow by layering a hygiene scan of Kubernetes cluster & workloads early in the development process and before moving to production.

With Alcide Advisor, you can cover the following security checks:

- Kubernetes infrastructure vulnerability scanning.
- Hunting misplaced secrets, or excessive priviliges for secret access.
- Workload hardening from Pod Security to network policies.
- Istio security configuration and best practices.
- Ingress Controllers for security best practices.
- Kubernetes API server access privileges.
- Kubernetes operators security best practices.
- Deployment conformance to labeling, annotating, resource limits and much more ...

## Start your risk-free trial now

![Alcide Kubernetes Advisor](https://d2908q01vomqb2.cloudfront.net/77de68daecd823babbb58edb1c8e14d7106e83bb/2019/06/19/Alcide-Advisor-Amazon-EKS-1.png "Alcide Kubernetes Advisor")

To get a tailor made exprience with **Alcide Kubernetes Advisor** start your risk-free [trial now](https://www.alcide.io/advisor-free-trial/)

Try all features free for 30 days
100% risk free - no automatic purchase after trial ends

or, [request a demo](https://get.alcide.io/request-demo)


# Alcide Kubernetes Advisor CircleCI Orb
All orbs are tested with .circleci/config.yml of this repo. Finished orbs will be published to the public CircleCI orb repository under the anchore namespace.

* To test orb changes, create a branch that starts with `orb_`. 
* Push the `orb_` branch to origin and a `@dev:alpha` version of the orb will be published. 

After the `@dev:alpha` orb is successfully published, a temporary tag that begins with `integration-orb_` will be pushed to the orb's git registry. This tag will trigger all orb tests to be started. Once all tests have passed, the dev orb can be promoted to production.

* Publish dev orb to production - promote major, minor, or patch version based on changes made.
  * `circleci orb publish promote alcide/alcide-advisor@dev:alpha [major|minor|patch]`


