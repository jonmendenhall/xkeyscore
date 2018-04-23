.class final Lcom/google/android/gms/internal/zzeab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzehp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzehp<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzmlu:Lcom/google/android/gms/internal/zzehm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeaa;Lcom/google/android/gms/internal/zzehm;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeab;->zzmlu:Lcom/google/android/gms/internal/zzehm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p3, Ljava/lang/Integer;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeab;->zzmlu:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzehm;->zzaj(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
