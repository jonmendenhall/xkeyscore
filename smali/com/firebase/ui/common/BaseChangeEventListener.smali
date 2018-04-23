.class public interface abstract Lcom/firebase/ui/common/BaseChangeEventListener;
.super Ljava/lang/Object;
.source "BaseChangeEventListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onChildChanged(Lcom/firebase/ui/common/ChangeEventType;Ljava/lang/Object;II)V
    .param p1    # Lcom/firebase/ui/common/ChangeEventType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/ui/common/ChangeEventType;",
            "TS;II)V"
        }
    .end annotation
.end method

.method public abstract onDataChanged()V
.end method

.method public abstract onError(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method
