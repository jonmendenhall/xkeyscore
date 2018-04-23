.class public Lcom/firebase/ui/auth/util/ui/ImeHelper;
.super Ljava/lang/Object;
.source "ImeHelper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/ui/auth/util/ui/ImeHelper$DonePressedListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setImeOnDoneListener(Landroid/widget/EditText;Lcom/firebase/ui/auth/util/ui/ImeHelper$DonePressedListener;)V
    .locals 1

    .line 19
    new-instance v0, Lcom/firebase/ui/auth/util/ui/ImeHelper$1;

    invoke-direct {v0, p1}, Lcom/firebase/ui/auth/util/ui/ImeHelper$1;-><init>(Lcom/firebase/ui/auth/util/ui/ImeHelper$DonePressedListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method
