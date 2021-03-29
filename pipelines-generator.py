
from pathlib import Path
import os
import jinja2 as j2

TEMPLATE_FILE = 'bitbucket-pipelines.yml.j2'
REPOS = ['atlassian/confluence', 'atlassian/confluence-server']

images = {
    'Confluence Alpine': {
        8: {
            'start_version': '6',
            'end_version': '7',
            'default_release': False,
            'base_image': 'adoptopenjdk/openjdk8:alpine',
            'tag_suffixes': ['alpine','alpine-adoptopenjdk8'],
            'dockerfile': 'Dockerfile-alpine',
            'docker_repos': REPOS,
        },
    },
    'Confluence Ubuntu': {
        8: {
            'start_version': '6',
            'end_version': '7.1',
            'default_release': True,
            'base_image': 'adoptopenjdk:8-hotspot',
            'tag_suffixes': ['adoptopenjdk8', 'jdk8', 'ubuntu', 'ubuntu-18.04-adoptopenjdk8'],
            'dockerfile': 'Dockerfile',
            'docker_repos': REPOS,
        },
        11: {
            'start_version': '7.1',
            'end_version': '8',
            'default_release': True,
            'base_image': 'adoptopenjdk:11-hotspot',
            'tag_suffixes': ['adoptopenjdk11', 'jdk11', 'ubuntu', 'ubuntu-18.04-adoptopenjdk11'],
            'dockerfile': 'Dockerfile',
            'docker_repos': REPOS,
        }
    },
}


def main():
    jenv = j2.Environment(
        loader=j2.FileSystemLoader('.'),
        lstrip_blocks=True,
        trim_blocks=True)
    template = jenv.get_template(TEMPLATE_FILE)
    generated_output = template.render(images=images, batches=12)

    print(generated_output)

if __name__ == '__main__':
    main()
