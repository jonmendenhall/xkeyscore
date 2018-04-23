.class final Lcom/google/android/gms/internal/zzegh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzehq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzehq<",
        "Lcom/google/android/gms/internal/zzegd;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzmxb:Z

.field private synthetic zzmxc:Ljava/util/List;

.field private synthetic zzmxd:Lcom/google/android/gms/internal/zzedk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzegg;ZLjava/util/List;Lcom/google/android/gms/internal/zzedk;)V
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzegh;->zzmxb:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzegh;->zzmxc:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzegh;->zzmxd:Lcom/google/android/gms/internal/zzedk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzbs(Ljava/lang/Object;)Z
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/zzegd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegd;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzegh;->zzmxb:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegh;->zzmxc:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegd;->zzbwy()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegd;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegh;->zzmxd:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzedk;->zzi(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegh;->zzmxd:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegd;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzedk;->zzi(Lcom/google/android/gms/internal/zzedk;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
