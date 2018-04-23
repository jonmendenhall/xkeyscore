.class Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$2;
.super Ljava/lang/Object;
.source "CheckEmailFragment.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->checkAccountExists(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$finalName:Ljava/lang/String;

.field final synthetic val$finalPhotoUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$2;->this$0:Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;

    iput-object p2, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$2;->val$email:Ljava/lang/String;

    iput-object p3, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$2;->val$finalName:Ljava/lang/String;

    iput-object p4, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$2;->val$finalPhotoUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 202
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$2;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$2;->this$0:Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;

    invoke-static {p1}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->access$000(Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;)Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$CheckEmailListener;

    move-result-object p1

    new-instance v0, Lcom/firebase/ui/auth/data/model/User$Builder;

    const-string v1, "password"

    iget-object v2, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$2;->val$email:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/User$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$2;->val$finalName:Ljava/lang/String;

    .line 207
    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/data/model/User$Builder;->setName(Ljava/lang/String;)Lcom/firebase/ui/auth/data/model/User$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$2;->val$finalPhotoUri:Landroid/net/Uri;

    .line 208
    invoke-virtual {v0, v1}, Lcom/firebase/ui/auth/data/model/User$Builder;->setPhotoUri(Landroid/net/Uri;)Lcom/firebase/ui/auth/data/model/User$Builder;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/firebase/ui/auth/data/model/User$Builder;->build()Lcom/firebase/ui/auth/data/model/User;

    move-result-object v0

    .line 206
    invoke-interface {p1, v0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$CheckEmailListener;->onNewUser(Lcom/firebase/ui/auth/data/model/User;)V

    goto :goto_0

    :cond_0
    const-string v0, "password"

    .line 210
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object p1, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$2;->this$0:Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;

    invoke-static {p1}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->access$000(Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;)Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$CheckEmailListener;

    move-result-object p1

    new-instance v0, Lcom/firebase/ui/auth/data/model/User$Builder;

    const-string v1, "password"

    iget-object v2, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$2;->val$email:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/firebase/ui/auth/data/model/User$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Lcom/firebase/ui/auth/data/model/User$Builder;->build()Lcom/firebase/ui/auth/data/model/User;

    move-result-object v0

    .line 211
    invoke-interface {p1, v0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$CheckEmailListener;->onExistingEmailUser(Lcom/firebase/ui/auth/data/model/User;)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$2;->this$0:Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;

    invoke-static {v0}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;->access$000(Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;)Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$CheckEmailListener;

    move-result-object v0

    new-instance v1, Lcom/firebase/ui/auth/data/model/User$Builder;

    iget-object v2, p0, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$2;->val$email:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/firebase/ui/auth/data/model/User$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/firebase/ui/auth/data/model/User$Builder;->build()Lcom/firebase/ui/auth/data/model/User;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$CheckEmailListener;->onExistingIdpUser(Lcom/firebase/ui/auth/data/model/User;)V

    :goto_0
    return-void
.end method
