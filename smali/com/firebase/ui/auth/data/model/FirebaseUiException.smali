.class public Lcom/firebase/ui/auth/data/model/FirebaseUiException;
.super Ljava/lang/Exception;
.source "FirebaseUiException.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 13
    iput p1, p0, Lcom/firebase/ui/auth/data/model/FirebaseUiException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    iput p1, p0, Lcom/firebase/ui/auth/data/model/FirebaseUiException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 22
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    iput p1, p0, Lcom/firebase/ui/auth/data/model/FirebaseUiException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .line 27
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 28
    iput p1, p0, Lcom/firebase/ui/auth/data/model/FirebaseUiException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public final getErrorCode()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/firebase/ui/auth/data/model/FirebaseUiException;->mErrorCode:I

    return v0
.end method
