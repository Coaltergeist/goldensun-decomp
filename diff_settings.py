def apply(config, args):
    config['baseimg'] = 'baserom.gba'
    config['myimg'] = 'goldensun.gba'
    config['mapfile'] = 'goldensun.map'
    config['source_directories'] = ['.']
    config['makeflags'] = []
    config['arch'] = 'armel'
    config['objdump_executable'] = 'arm-none-eabi-objdump'
    config['objdump_flags'] = ['-m', 'arm']
    config['expected_dir'] = 'expected/'
    # Object-file mode (-o): asm-differ rebuilds the current .o via this command
    # and diffs it against the corresponding object under expected_dir.
    config['build_command'] = ['make', '-j']
    config['map_format'] = 'gnu'
