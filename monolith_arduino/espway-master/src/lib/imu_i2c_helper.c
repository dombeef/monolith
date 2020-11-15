/*
 * Helper for doing common tasks with I2C IMUs (and maybe other devices).
 * Copyright (C) 2017  Sakari Kapanen
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "imu_i2c_helper.h"
#include "espway_config.h"

static uint8_t imu_i2c_bus = 0;
static i2c_freq_t imu_i2c_freq = I2C_FREQ_100K;
static int imu_i2c_scl = 5;
static int imu_i2c_sda = 0;

int imu_send_config(uint8_t i2c_address, const imu_register_value_t *config,
                    size_t n_register_values)
{
  for (size_t i = 0; i < n_register_values; ++i)
  {
    int ret = imu_write_register(i2c_address, config[i].address,
                                 config[i].value);
    if (ret != 0) return ret;
  }
  return 0;
}

int imu_write_register(uint8_t addr, uint8_t reg, uint8_t value)
{
  return i2c_slave_write(imu_i2c_bus, addr, &reg, &value, 1);
}

int imu_read_register(uint8_t addr, uint8_t reg, uint8_t *data)
{
  return imu_read_registers(addr, reg, data, 1);
}

int imu_read_registers(uint8_t addr, uint8_t reg, uint8_t *data, uint8_t len)
{
  return i2c_slave_read(imu_i2c_bus, addr, &reg, data, len);
}

void imu_i2c_init(uint8_t bus)
{
  imu_i2c_bus = bus;
  i2c_init(bus, imu_i2c_scl, imu_i2c_sda, imu_i2c_freq);
}

void imu_i2c_configure(i2c_freq_t freq, int scl, int sda)
{
  imu_i2c_freq = freq;
  imu_i2c_scl = scl;
  imu_i2c_sda = sda;
}

