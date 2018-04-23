.class Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2$2;
.super Ljava/lang/Object;
.source "RegisterEmailFragment.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->onFailure(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$1:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2$2;->this$1:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 268
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2$2;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 7

    .line 271
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2$2;->this$1:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;

    iget-object v0, v0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/firebase/ui/auth/R$string;->fui_error_user_collision:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    if-nez p1, :cond_0

    .line 277
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "User has no providers even though we got a FirebaseAuthUserCollisionException"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string v0, "password"

    .line 281
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x12

    if-eqz v0, :cond_1

    .line 283
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2$2;->this$1:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;

    iget-object p1, p1, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    invoke-virtual {p1}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2$2;->this$1:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;

    iget-object v0, v0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    .line 285
    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2$2;->this$1:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;

    iget-object v2, v2, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    .line 286
    invoke-virtual {v2}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v2

    new-instance v3, Lcom/firebase/ui/auth/IdpResponse$Builder;

    new-instance v4, Lcom/firebase/ui/auth/data/model/User$Builder;

    const-string v5, "password"

    iget-object v6, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2$2;->this$1:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;

    iget-object v6, v6, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->val$email:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/firebase/ui/auth/data/model/User$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v4}, Lcom/firebase/ui/auth/data/model/User$Builder;->build()Lcom/firebase/ui/auth/data/model/User;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/firebase/ui/auth/IdpResponse$Builder;-><init>(Lcom/firebase/ui/auth/data/model/User;)V

    invoke-virtual {v3}, Lcom/firebase/ui/auth/IdpResponse$Builder;->build()Lcom/firebase/ui/auth/IdpResponse;

    move-result-object v3

    .line 284
    invoke-static {v0, v2, v3}, Lcom/firebase/ui/auth/ui/email/WelcomeBackPasswordPrompt;->createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;Lcom/firebase/ui/auth/IdpResponse;)Landroid/content/Intent;

    move-result-object v0

    .line 283
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2$2;->this$1:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;

    iget-object v0, v0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    invoke-virtual {v0}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2$2;->this$1:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;

    iget-object v2, v2, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    .line 294
    invoke-virtual {v2}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2$2;->this$1:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;

    iget-object v3, v3, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->this$0:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;

    .line 295
    invoke-virtual {v3}, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment;->getFlowParams()Lcom/firebase/ui/auth/data/model/FlowParameters;

    move-result-object v3

    new-instance v4, Lcom/firebase/ui/auth/data/model/User$Builder;

    iget-object v5, p0, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2$2;->this$1:Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;

    iget-object v5, v5, Lcom/firebase/ui/auth/ui/email/RegisterEmailFragment$2;->val$email:Ljava/lang/String;

    invoke-direct {v4, p1, v5}, Lcom/firebase/ui/auth/data/model/User$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v4}, Lcom/firebase/ui/auth/data/model/User$Builder;->build()Lcom/firebase/ui/auth/data/model/User;

    move-result-object p1

    const/4 v4, 0x0

    .line 293
    invoke-static {v2, v3, p1, v4}, Lcom/firebase/ui/auth/ui/idp/WelcomeBackIdpPrompt;->createIntent(Landroid/content/Context;Lcom/firebase/ui/auth/data/model/FlowParameters;Lcom/firebase/ui/auth/data/model/User;Lcom/firebase/ui/auth/IdpResponse;)Landroid/content/Intent;

    move-result-object p1

    .line 292
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method
