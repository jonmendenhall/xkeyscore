.class public interface abstract Lcom/firebase/ui/auth/provider/IdpProvider$IdpCallback;
.super Ljava/lang/Object;
.source "IdpProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/ui/auth/provider/IdpProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IdpCallback"
.end annotation


# virtual methods
.method public abstract onFailure()V
.end method

.method public abstract onSuccess(Lcom/firebase/ui/auth/IdpResponse;)V
.end method
