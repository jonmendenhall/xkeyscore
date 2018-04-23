.class Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$1;
.super Ljava/lang/Object;
.source "WelcomeBackPasswordPrompt.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->validateAndSignIn(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$1;->this$0:Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 197
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$1;->this$0:Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->getDialogHolder()Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->dismissDialog()V

    .line 198
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    .line 199
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt$1;->this$0:Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;

    invoke-static {v0}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->access$000(Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;)Landroid/support/design/widget/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
