.class interface abstract Lcom/firebase/ui/auth/ui/email/CheckEmailFragment$CheckEmailListener;
.super Ljava/lang/Object;
.source "CheckEmailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/ui/auth/ui/email/CheckEmailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "CheckEmailListener"
.end annotation


# virtual methods
.method public abstract onExistingEmailUser(Lcom/firebase/ui/auth/data/model/User;)V
.end method

.method public abstract onExistingIdpUser(Lcom/firebase/ui/auth/data/model/User;)V
.end method

.method public abstract onNewUser(Lcom/firebase/ui/auth/data/model/User;)V
.end method
