declare const FirebaseIntegration:
    | {disabled: true}
    | (() => Promise<void>)

export = FirebaseIntegration
