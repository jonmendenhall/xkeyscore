.class final Lcom/google/android/gms/internal/zzecz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzehp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzehp<",
        "Lcom/google/android/gms/internal/zzekd;",
        "Lcom/google/android/gms/internal/zzecy;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzmrv:Lcom/google/android/gms/internal/zzedk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzecy;Lcom/google/android/gms/internal/zzedk;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzecz;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lcom/google/android/gms/internal/zzekd;

    check-cast p3, Lcom/google/android/gms/internal/zzecy;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecz;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzedk;->zzh(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/zzecy;->zze(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzecy;

    move-result-object p1

    return-object p1
.end method
