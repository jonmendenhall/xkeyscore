.class Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$1;
.super Ljava/lang/Object;
.source "WelcomeBackIdpPrompt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$1;->this$0:Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 123
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$1;->this$0:Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;

    invoke-virtual {p1}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->getDialogHolder()Lcom/firebase/ui/auth/ui/ProgressDialogHolder;

    move-result-object p1

    sget v0, Lcom/firebase/ui/auth/R$string;->fui_progress_dialog_signing_in:I

    invoke-virtual {p1, v0}, Lcom/firebase/ui/auth/ui/ProgressDialogHolder;->showLoadingDialog(I)V

    .line 124
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$1;->this$0:Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;

    invoke-static {p1}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->access$000(Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;)Lcom/firebase/ui/auth/provider/IdpProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt$1;->this$0:Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;

    invoke-interface {p1, v0}, Lcom/firebase/ui/auth/provider/IdpProvider;->startLogin(Landroid/app/Activity;)V

    return-void
.end method
