.class public final Lcom/google/android/gms/internal/zzehy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeib;


# instance fields
.field private final zzmks:Lcom/google/android/gms/internal/zzedk;

.field private final zzmzl:Lcom/google/android/gms/internal/zzedh;

.field private final zzmzm:Lcom/google/firebase/database/DatabaseError;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzedh;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/zzedk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehy;->zzmzl:Lcom/google/android/gms/internal/zzedh;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzehy;->zzmks:Lcom/google/android/gms/internal/zzedk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzehy;->zzmzm:Lcom/google/firebase/database/DatabaseError;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehy;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    add-int/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":CANCEL"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbyc()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehy;->zzmzl:Lcom/google/android/gms/internal/zzedh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehy;->zzmzm:Lcom/google/firebase/database/DatabaseError;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzedh;->zza(Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method
