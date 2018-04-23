.class public interface abstract Lcom/firebase/ui/auth/provider/Provider;
.super Ljava/lang/Object;
.source "Provider.java"


# virtual methods
.method public abstract getButtonLayout()I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end method

.method public abstract getName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract startLogin(Landroid/app/Activity;)V
.end method
