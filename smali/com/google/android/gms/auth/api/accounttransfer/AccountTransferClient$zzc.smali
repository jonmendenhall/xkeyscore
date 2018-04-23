.class abstract Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzc;
.super Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzb<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field zzedy:Lcom/google/android/gms/internal/zzavc;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzb;-><init>(Lcom/google/android/gms/auth/api/accounttransfer/zzc;)V

    new-instance v0, Lcom/google/android/gms/auth/api/accounttransfer/zzk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/accounttransfer/zzk;-><init>(Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzc;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzc;->zzedy:Lcom/google/android/gms/internal/zzavc;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/zzc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzc;-><init>()V

    return-void
.end method
