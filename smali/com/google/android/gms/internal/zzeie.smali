.class final Lcom/google/android/gms/internal/zzeie;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/zzehz;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zznab:Lcom/google/android/gms/internal/zzeid;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeid;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeie;->zznab:Lcom/google/android/gms/internal/zzeid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/zzehz;

    check-cast p2, Lcom/google/android/gms/internal/zzehz;

    new-instance v0, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzehz;->zzbyd()Lcom/google/android/gms/internal/zzejg;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzehz;->zzbyb()Lcom/google/android/gms/internal/zzejw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    new-instance p1, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzehz;->zzbyd()Lcom/google/android/gms/internal/zzejg;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzehz;->zzbyb()Lcom/google/android/gms/internal/zzejw;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeie;->zznab:Lcom/google/android/gms/internal/zzeid;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzeid;->zza(Lcom/google/android/gms/internal/zzeid;)Lcom/google/android/gms/internal/zzejv;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzejv;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
