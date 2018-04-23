.class Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$StartWelcomeBackFlow;
.super Ljava/lang/Object;
.source "CredentialSignInHandler.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartWelcomeBackFlow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;


# direct methods
.method private constructor <init>(Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$StartWelcomeBackFlow;->this$0:Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$1;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$StartWelcomeBackFlow;-><init>(Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 95
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$StartWelcomeBackFlow;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$StartWelcomeBackFlow;->this$0:Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;

    invoke-static {v0}, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->access$000(Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;)Lcom/firebase/ui/auth/ui/HelperActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->getDialogHolder()Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->dismissDialog()V

    if-nez p1, :cond_0

    .line 101
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No provider even though we received a FirebaseAuthUserCollisionException"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string v0, "password"

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$StartWelcomeBackFlow;->this$0:Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;

    invoke-static {p1}, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->access$000(Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;)Lcom/firebase/ui/auth/ui/HelperActivityBase;

    move-result-object p1

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$StartWelcomeBackFlow;->this$0:Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;

    .line 107
    invoke-static {v0}, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->access$000(Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;)Lcom/firebase/ui/auth/ui/HelperActivityBase;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$StartWelcomeBackFlow;->this$0:Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;

    .line 108
    invoke-static {v1}, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->access$000(Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;)Lcom/firebase/ui/auth/ui/HelperActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$StartWelcomeBackFlow;->this$0:Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;

    .line 109
    invoke-static {v2}, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->access$200(Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;)Lcom/firebase/ui/auth/IdpResponse;

    move-result-object v2

    .line 106
    invoke-static {v0, v1, v2}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;Lcom/firebase/ui/auth/IdpResponse;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$StartWelcomeBackFlow;->this$0:Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;

    .line 110
    invoke-static {v1}, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->access$300(Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;)I

    move-result v1

    .line 105
    invoke-virtual {p1, v0, v1}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$StartWelcomeBackFlow;->this$0:Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;

    invoke-static {v0}, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->access$000(Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;)Lcom/firebase/ui/auth/ui/HelperActivityBase;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$StartWelcomeBackFlow;->this$0:Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;

    .line 115
    invoke-static {v1}, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->access$000(Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;)Lcom/firebase/ui/auth/ui/HelperActivityBase;

    move-result-object v1

    iget-object v2, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$StartWelcomeBackFlow;->this$0:Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;

    .line 116
    invoke-static {v2}, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->access$000(Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;)Lcom/firebase/ui/auth/ui/HelperActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v2

    new-instance v3, Lcom/firebase/ui/auth/data/model/User$Builder;

    iget-object v4, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$StartWelcomeBackFlow;->this$0:Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;

    .line 117
    invoke-static {v4}, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->access$200(Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;)Lcom/firebase/ui/auth/IdpResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/firebase/ui/auth/IdpResponse;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/firebase/ui/auth/data/model/User$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/firebase/ui/auth/data/model/User$Builder;->build()Lcom/firebase/ui/auth/data/model/User;

    move-result-object p1

    iget-object v3, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$StartWelcomeBackFlow;->this$0:Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;

    .line 118
    invoke-static {v3}, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->access$200(Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;)Lcom/firebase/ui/auth/IdpResponse;

    move-result-object v3

    .line 114
    invoke-static {v1, v2, p1, v3}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;Lcom/firebase/ui/auth/data/model/User;Lcom/firebase/ui/auth/IdpResponse;)Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler$StartWelcomeBackFlow;->this$0:Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;

    .line 119
    invoke-static {v1}, Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;->access$300(Lcom/firebase/ui/auth/ui/idp/CredentialSignInHandler;)I

    move-result v1

    .line 113
    invoke-virtual {v0, p1, v1}, Lcom/firebase/ui/auth/ui/HelperActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method
