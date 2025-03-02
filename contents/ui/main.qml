/*
 * Copyright 2022  LeeVD <thoth360@hotmail.com>
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 2 of
 * the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http: //www.gnu.org/licenses/>.
 */
import QtQuick 2.2
import org.kde.plasma.plasmoid 2.0
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 2.0 as PlasmaComponents
import "com.github.saintbyte.wunder-wafle.plasmoid:/code/foo.js" as Foo
Item {
    signal updateUi()
    /*
    signal statsUpd(var keys, var values)
    property alias dbusData : dbusData
    DbusData {
        id: dbusData
        onNewSensorData: {
            sysMonitor.statsUpd(keys, values)
        }
    }
    */
    Timer {
        interval: updateInterval
        running: true
        repeat: true
        onTriggered: {
            sysMonitor.updateUi()
        }
    }
}