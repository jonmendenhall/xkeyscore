.class Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$FinishListener;
.super Ljava/lang/Object;
.source "WelcomeBackIdpPrompt.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FinishListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIdpResponse:Lcom/firebase/ui/auth/IdpResponse;

.field final synthetic this$0:Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;Lcom/firebase/ui/auth/IdpResponse;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$FinishListener;->this$0:Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p2, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$FinishListener;->mIdpResponse:Lcom/firebase/ui/auth/IdpResponse;

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 204
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$FinishListener;->this$0:Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$FinishListener;->mIdpResponse:Lcom/firebase/ui/auth/IdpResponse;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/IdpResponse;->toIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->finish(ILandroid/content/Intent;)V

    return-void
.end method
