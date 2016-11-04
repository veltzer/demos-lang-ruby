'''
dependencies for this project
'''

def populate(d):
    d.packs=[
        # for ruby(1) and the core langauge
        'ruby',
        # for compiling C modules for ruby
        'ruby-dev',
        # for Ruby on Rails
        'rails',
    ]

def getdeps():
    return [
        __file__, # myself
    ]
